#!usrbinruby

require 'mongo'
require 'builder'
require 'optparse'
require_relative './connection'
require 'squid'
require 'prawn'

conn = Connection.new
db = conn.client.database
thor = conn.thor

results = thor.aggregate([
   {'$group' => { _id: {milservice: "$MILSERVICE"}, 'count' => { '$sum' => 1}}},
  {'$sort' => {count: -1}}
  ])

arr=[]
for i in 0..results.to_a.size()-1
  arr << results.to_a[i][:_id][:milservice]
  arr << Integer(results.to_a[i][:count])
end
h=Hash[*arr]

  Prawn::Document.generate("test.pdf") do
    data = {thor: h}
    chart data
  end