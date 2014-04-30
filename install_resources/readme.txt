HOW TO USE THIS TOOL:
  1. On a freshly installed OS, install git
  2 On a cloned virtualbox, run install_resources/fix_vbox_nwiface.sh
  3. Change to root
     ~$ sudo su -
  4. install chef-solo
      ~# curl -L https://www.opscode.com/chef/install.sh | bash
  5. clone this repo
      ~# git clone https://github.com/icasimpan/chefsolo_ownlamppstack.git chef-repo
  6. Remove git (since this includes git installation)
      ~# yes|yum remove git
  7. cd /root/chef-repo
  8. chef-solo -c solo.rb -j web.json
