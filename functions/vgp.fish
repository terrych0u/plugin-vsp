function vgp -d 'Gets current Vault info'
  if test -n "$VAULT_PROFILE"
    echo "Profile: $VAULT_PROFILE"
  else
    echo "Profile: Profile not set, Using default"
  end

  if test -n "$VAULT_ADDR"
    echo "Address: $VAULT_ADDR"
  else
    echo "Address: Address not set, Using default"
  end

end
