require 'cgi'

cgi = CGI.new
cgi.out("type" => "text/html", "charset" => "UTF-8") {

  get = cgi['query']

  "<html>
    <head>
      <style media='screen'>
        table, td, th{
          border: 1px solid black;
          border-collapse: collapse;
        }
      </style>
    </head>
    <body>
      <table style = 'margin: 0 auto; text-align: center; width: 50%;'>
        <tr>
          <th>LENGTH</th>
          <th>WEIGHT</th>
          <th>GIVE FOR</th>
          <th>QUALITY</th>
          <th>DATE</th>
        </tr>
        #{get}
      <table>
    </body>
  </html>"
}
