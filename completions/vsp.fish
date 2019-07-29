function __fish_print_vault_profiles -d 'Prints a list of Vault profiles' -a select
  command sed -n 's/^\[\(.*\)\]/\1/p' ~/.vault/credentials
end

complete -xc 'vsp' -a '(__fish_print_vault_profiles)'
