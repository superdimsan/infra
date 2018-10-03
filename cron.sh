touch /home/appuser/cronfile
chmod 777 cronfile
echo "@reboot cd /home/appuser/git_repo/reddit && ( RACK_ENV=production ~/.rvm/bin/rvm default do bundle exec puma -C /home/appuser/.rvm/gems/ruby-2.4.1/gems/puma-3.10.0/lib/puma.rb ) " > /home/appuser/cronfile
crontab /home/appuser/cronfile

