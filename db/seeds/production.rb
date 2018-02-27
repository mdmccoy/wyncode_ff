picture_array = [['https://i.imgur.com/xsHi1wL.jpg', 'https://i.imgur.com/xsHi1wLb.jpg'],
                 ['https://i.imgur.com/QRJIKEg.jpg', 'https://i.imgur.com/QRJIKEgb.jpg'],
                 ['https://i.imgur.com/F4sTzdX.jpg', 'https://i.imgur.com/F4sTzdXb.jpg'],
                 ['https://i.imgur.com/RV7Jpwi.jpg?1', 'https://i.imgur.com/RV7Jpwib.jpg?1'],
                 ['https://i.imgur.com/kpLLrz6.jpg', 'https://i.imgur.com/kpLLrz6b.jpg'],
                 ['https://i.imgur.com/Kvq1Y0K.jpg', 'https://i.imgur.com/Kvq1Y0Kb.jpg'],
                 ['https://i.imgur.com/X7qCbC0.jpg?1', 'https://i.imgur.com/X7qCbC0b.jpg?1'],
                 ['https://i.imgur.com/XSX7mtF.jpg', 'https://i.imgur.com/XSX7mtFb.jpg'],
                 ['https://i.imgur.com/jOWZqox.jpg', 'https://i.imgur.com/jOWZqoxb.jpg'],
                 ['https://i.imgur.com/4IwpAiL.jpg', 'https://i.imgur.com/4IwpAiLb.jpg'],
                 ['https://i.imgur.com/1Pu6hzt.jpg', 'https://i.imgur.com/1Pu6hztb.jpg'],
                 ['https://i.imgur.com/jTu7q2Y.jpg?1', 'https://i.imgur.com/jTu7q2Yb.jpg?1'],
                 ['https://i.imgur.com/sJ6eeoo.jpg?1', 'https://i.imgur.com/sJ6eeoob.jpg?1'],
                 ['https://i.imgur.com/JenT3rf.jpg', 'https://i.imgur.com/JenT3rfb.jpg'],
                 ['https://i.imgur.com/P5A4RGq.jpg', 'https://i.imgur.com/P5A4RGqb.jpg'],
                 ['https://i.imgur.com/yGrdpxa.jpg', 'https://i.imgur.com/yGrdpxab.jpg'],
                 ['https://i.imgur.com/imavQbC.jpg', 'https://i.imgur.com/imavQbCb.jpg']]

caption_array = ['What do you guys think?',
                 "I've never seen anything like this!",
                 'Can you believe it?',
                 'Awesome!',
                 'This one is the coolest.',
                 'No place like Miami!',
                 'This piece really speaks to me.',
                 'Inspiring!']

                 picture_array.each do |picture|
                   Picture.create(
                     url: picture[0],
                     thumbnail: picture[1],
                     caption: caption_array.sample,
                     rating: (3..5).to_a.sample,
                     location: '199 NW 25th St Miami Florida'
                   )
                 end
