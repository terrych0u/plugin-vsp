function vgp -d 'Gets current Vault info'
  if test -n "$VAULT_ADDR"
    echo "Endpoint: $VAULT_ADDR"
  else
    echo "Endpoint: Address not set"
  end
  if test -n "$VAULT_TOKEN"
    echo "Token: $VAULT_TOKEN"
  else
    echo "Token: Token not set"
  end

end
