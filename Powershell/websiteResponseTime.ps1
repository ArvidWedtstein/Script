$url = "google.com"
(Measure-Command -Expression { $site = Invoke-WebRequest -Uri $url -UseBasicParsing }).Milliseconds
