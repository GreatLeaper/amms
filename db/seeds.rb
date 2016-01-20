# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Color.create(name: 'Alleheny Perch')
Color.create(name: 'Atomic Perch')
Color.create(name: 'Chub')
Color.create(name: 'Green Sunfish')
Color.create(name: 'Holy Crappie')
Color.create(name: 'Perch')
Color.create(name: 'Raven Black')
Color.create(name: 'Red Head')
Color.create(name: 'Red Horse Sucker')
Color.create(name: 'Shiner')
Color.create(name: 'Walleye')

Bill.create(material: 'Stainless Steel')

Hook.create(hook_type: 'Treble', size: '7/0')
Hook.create(hook_type: 'Treble', size: '6/0')
Hook.create(hook_type: 'Treble', size: '5/0')
Hook.create(hook_type: 'Treble', size: '4/0')
Hook.create(hook_type: 'Treble', size: '3/0')
Hook.create(hook_type: 'Treble', size: '2/0')
Hook.create(hook_type: 'Treble', size: '1/0')
Hook.create(hook_type: 'Treble', size: '1')
Hook.create(hook_type: 'Treble', size: '2')
Hook.create(hook_type: 'Treble', size: '4')
Hook.create(hook_type: 'Treble', size: '6')
Hook.create(hook_type: 'Treble', size: '8')
Hook.create(hook_type: 'Treble', size: '10')
Hook.create(hook_type: 'Treble', size: '12')
Hook.create(hook_type: 'Indiana', size: '8')

LureType.create(name: 'Fat Back', bill_id: 1, hook_id: 7, description: 'It\'s fat. It catches fish.')
LureType.create(name: "Tom's Dislocated Minnow", bill_id: 1, hook_id: 4, description: 'It\'s Tom\'s.  It catches fish.')

Lure.create(code: 'FB-AGP-001', lure_type_id: 1, color_id: 1, active: true)
Lure.create(code: 'TDM-CHB-001', lure_type_id: 2, color_id: 3, active: true)
