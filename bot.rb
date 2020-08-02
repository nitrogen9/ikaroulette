require 'discordrb'
require "csv"

        bot1 = Discordrb::Commands::CommandBot.new(
            token: "NzM1Nzg5NzU2NzgwMzgwMTYw.XxlXnA.F54eYszwyFDEI0U0EhEXvFbx6jk",
            client_id: 735789756780380160,
            prefix: ".",
        )
        bot2 = Discordrb::Commands::CommandBot.new(
            token: "NzM5MDc5MTczOTI2Mjg5NDc4.XyVPHg.YIi8VaKNWPUXmyuPTmKemc00S2o",
            client_id: 739079173926289478,
            prefix: "!",
        )
        bukilist = CSV.read('buki.csv')
        nasilist = CSV.read('nasi.csv')
        splist = CSV.read('sp.csv')
        sublist = CSV.read('sub.csv')
        syulist = CSV.read('syu.csv')
    
        bot1.command :buki do |event|
            event.respond("#{event.user.mention} #{bukilist[rand(0..bukilist.length)][0]}")
        end
      
        bot1.command :nasi do |event|
            event.respond("#{event.user.mention} #{nasilist[rand(0..bukilist.length)][0]}")
        end
      
        bot1.command :sp do |event|
            event.respond("#{event.user.mention} #{splist[rand(0..bukilist.length)][0]}")
        end
      
        bot1.command :sub do |event|
            event.respond("#{event.user.mention} #{sublist[rand(0..bukilist.length)][0]}")
        end
      
        bot1.command :syu do |event|
            event.respond("#{event.user.mention} #{syulist[rand(0..bukilist.length)][0]}")
        end

        bot2.command :buki do |event|
            channel = event.user.voice_channel
            users = channel.users
            for num in 0..users.length do
              event.respond "#{users[num].name} の使うブキ -> #{bukilist[rand(0..bukilist.length)][0]}"
            end
          end
      
        bot2.command :nasi do |event|
            channel = event.user.voice_channel
            users = channel.users
            for num in 0..users.length do
             event.respond "#{users[num].name} の使うブキ -> #{nasilist[rand(0..nasilist.length)][0]}"
            end
        end
      
        bot2.command :sp do |event|
            channel = event.user.voice_channel
            users = channel.users
            for num in 0..users.length do
              event.respond "#{users[num].name} の使うブキ -> #{splist[rand(0..splistngth)][0]}"
            end
        end
      
        bot2.command :sub do |event|
            channel = event.user.voice_channel
            users = channel.users
            for num in 0..users.length do
              event.respond "#{users[num].name} の使うブキ -> #{sublist[rand(0..sublist.length)][0]}"
            end
        end
      
        bot2.command :syu do |event|
            channel = event.user.voice_channel
            users = channel.users
            for num in 0..users.length do
              event.respond "#{users[num].name} の使うブキ -> #{syulist[rand(0..syulist.length)][0]}"
            end
        end


bot1.run(:async)
bot2.run
