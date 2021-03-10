function vsp -d 'Switches Vault profile' -a vault_profile
  if test -z "$vault_profile"
    echo "Usage: vsp <vault_profile> "
    echo "Optional profile flag to override default profile"
    return 1
  end

  set -l vault_addr \
    (awk "/\[$vault_profile\]/,/^\$/ { if (\$1 == \"vault_addr\") { print \$3 }}" \
      $HOME/.vault/credentials)
  
  set -l vault_token \
    (awk "/\[$vault_profile\]/,/^\$/ { if (\$1 == \"vault_token\") { print \$3 }}" \
      $HOME/.vault/credentials)

  if test ! -n "$vault_addr" -o ! -n "$vault_token"
    echo "Invalid $vault_profile profile in $HOME/.vault/credentials"
    return 1
  end

  set -gx VAULT_ADDR "$vault_addr"
  set -gx VAULT_TOKEN "$vault_token"
  set -gx VAULT_PROFILE "$vault_profile"

  vgp
end
