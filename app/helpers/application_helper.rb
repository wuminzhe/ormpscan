module ApplicationHelper
  def short(hex)
    "#{hex[0..5]}..#{hex[-4..]}"
  end

  def md_short(hex)
    "#{hex[0..6]}..#{hex[-5..]}"
  end

  def address_link(network, address)
    url = File.join(network.explorer, 'address', address)
    %(<a href="#{url}" class="underline">#{address}</a>).html_safe
  end

  def address_link_short(network, address)
    url = File.join(network.explorer, 'address', address)
    %(<a href="#{url}" class="underline">#{short(address)}</a>).html_safe
  end

  def transaction_link(network, tx_hash)
    url = File.join(network.explorer, 'tx', tx_hash)
    %(<a href="#{url}" class="underline">#{tx_hash}</a>).html_safe
  end

  def block_link(network, block_number)
    url = File.join(network.explorer, 'block', block_number.to_s)
    %(<a href="#{url}" class="underline">#{block_number}</a>).html_safe
  end
end
