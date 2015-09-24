# Server Information
# ======================

server 'xx.xx.xx.xx', user: 'xxxxx'


# Custom SSH Options
# ==================

 set :ssh_options, {
   keys: %w(/Users/xxxxx/.ssh/xxxxx),
   #forward_agent: false
   # auth_methods: %w(password)
 }


