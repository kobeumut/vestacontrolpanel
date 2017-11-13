# Vestacp

VestaCP API bindings on ruby. For now, only with user accounts, domain, database but that's simple — to make it work with another api functions. 

## Installation

Add this line to your application's Gemfile:

```ruby
require 'vestacp'
require 'uri'
     Vestacp.configure do |config|
       config.api_username = 'admin'
       config.api_password = '123456'
       config.api_url      = 'https://64.141.159.30:8083/api/'
     end
    puts Vestacp::Domain.add({username:'admin',domain:'yeni.com'})
    puts Vestacp::Account.add({username: 'asd',password: 'arg2',email: 'arg3',package: 'arg4',first_name: 'arg5',last_name: 'arg6'})
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vestacp2

## Usage

```ruby
Vestacp::Account.information({username: 'admin'})
```

will return
```ruby
{:error=>false,
 :response=>
  {"admin"=>
    {"FNAME"=>"System",
     "LNAME"=>"Administrator",
     "PACKAGE"=>"default",
     "WEB_TEMPLATE"=>"default",
     "BACKEND_TEMPLATE"=>"",
     "PROXY_TEMPLATE"=>"default",
     "DNS_TEMPLATE"=>"default",
     "WEB_DOMAINS"=>"100",
     "WEB_ALIASES"=>"100",
     "DNS_DOMAINS"=>"100",
     "DNS_RECORDS"=>"100",
     "MAIL_DOMAINS"=>"100",
     "MAIL_ACCOUNTS"=>"100",
     "DATABASES"=>"100",
     "CRON_JOBS"=>"100",
     "DISK_QUOTA"=>"10000",
     "BANDWIDTH"=>"100000",
     "NS"=>"ns1.localhost.ltd, ns2.localhost.ltd",
     "SHELL"=>"bash",
     "BACKUPS"=>"3",
     "CONTACT"=>"a@kdas.me",
     "CRON_REPORTS"=>"yes",
     "RKEY"=>"YTTyCNpySz",
     "SUSPENDED"=>"no",
     "SUSPENDED_USERS"=>"0",
     "SUSPENDED_WEB"=>"0",
     "SUSPENDED_DNS"=>"0",
     "SUSPENDED_MAIL"=>"0",
     "SUSPENDED_DB"=>"0",
     "SUSPENDED_CRON"=>"0",
     "IP_AVAIL"=>"1",
     "IP_OWNED"=>"1",
     "U_USERS"=>"1",
     "U_DISK"=>"0",
     "U_DISK_DIRS"=>"0",
     "U_DISK_WEB"=>"0",
     "U_DISK_MAIL"=>"0",
     "U_DISK_DB"=>"0",
     "U_BANDWIDTH"=>"0",
     "U_WEB_DOMAINS"=>"1",
     "U_WEB_SSL"=>"0",
     "U_WEB_ALIASES"=>"1",
     "U_DNS_DOMAINS"=>"1",
     "U_DNS_RECORDS"=>"11",
     "U_MAIL_DOMAINS"=>"1",
     "U_MAIL_DKIM"=>"0",
     "U_MAIL_ACCOUNTS"=>"0",
     "U_DATABASES"=>"1",
     "U_CRON_JOBS"=>"7",
     "U_BACKUPS"=>"0",
     "LANGUAGE"=>"en",
     "HOME"=>"/home/admin",
     "TIME"=>"06:03:09",
     "DATE"=>"2017-07-18"}}}
```
## TODO
More API support will be provided.

For now, adding, removing, suspend, unsuspend, check credentials, information for customers
Domain add and delete,
Database add and delete,

## Contributing

1. Fork it ( https://github.com/kobeumut/vestacontrolpanel/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
