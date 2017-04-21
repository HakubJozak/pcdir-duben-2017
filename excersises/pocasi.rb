


   # $('#predpoved-dnes .weather')

    require 'open-uri'
    require 'nokogiri' 
    require 'pry'

    text = open('https://pocasi.seznam.cz/brno#zitra').read
    html = Nokogiri::HTML(text)
    dnes =  html.css('#predpoved-dnes .weather2 span').text

    puts "Pocasi dnes (#{Date.today}): #{dnes}"
