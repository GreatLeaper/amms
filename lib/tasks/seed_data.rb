desc "Seeds data for system"
task seed_data: [:environment] do

  colors = [ 'Bone',
             'Chub',
             'Glacier Blue',
             'Green Sunfish',
             'Perch',
             'Raven Black',
             'Red Head'
           ]

  colors.each do |color|
    Color.create(name: "#{color}")
  end

  hooks = [ { hook_type: 'Indiana', size: '8' },
            { hook_type: 'Treble', size: '1' },
            { hook_type: 'Treble', size: '2' },
            { hook_type: 'Treble', size: '4' },
            { hook_type: 'Treble', size: '6' },
            { hook_type: 'Treble', size: '12' },
            { hook_type: 'Treble', size: '1/0' },
            { hook_type: 'Treble', size: '2/0' },
            { hook_type: 'Treble', size: '3/0' },
            { hook_type: 'Treble', size: '4/0' },
            { hook_type: 'Treble', size: '5/0' },
            { hook_type: 'Treble', size: '6/0' },
            { hook_type: 'Treble', size: '7/0' }
          ]

  hooks.each do |hook|
    Hook.create(hook_type: hook[:hook_type], size: "#{hook[:size]}")
  end

  bills = [ 'Stainless Steel' ]

  bills.each do |bill|
    Bill.create(material: bill)
  end

end
