%x( rm -rf .git .gitmodules )
%x( curl -O https://wordpress.org/latest.tar.gz )
%x( tar -xvzf latest.tar.gz )
%x( mv wordpress/* . )
%x( rmdir wordpress/ )
%x( cp wp-config-sample.php wp-config.php )
%x( mv brandnewtheme/ wp-content/themes )
%x( rm -rf wp-content/themes/brandnewtheme/.git )
%x( git init )
%x( rm prepare.rb )

# Maybe delete some of the twenty* themes
# Maybe do find and replace of `brandnewtheme`
# Maybe run bundle?
# Maybe add wp-cli commands instead of downloading with curl?