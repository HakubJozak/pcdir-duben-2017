require 'sinatra'
require_relative './weather'


weather = Weather.new( pondeli: 'Jasno',
                       utery: 'Zatazeno',
                       streda: 'Dest')



get '/' do
  header = "<h1>Pocasi dnes</h1>"

    table = """
   <style>
     th, td {   border: 1px solid black;   } 
    </style>
    <table>
      #{weather.to_html}
    </table>
    """
    [ header, table ].join
end
