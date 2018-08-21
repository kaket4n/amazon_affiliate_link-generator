module AmazonAffiliateLink
  class Generator
    TAG = 'kaketan-22'.freeze

    def perform(url)
      match_data = url.match(/https?:\/\/([^\/]+)\/.+(?:d|dp|ASIN|product)\/([^\/]+)/)
      base_str(match_data[1]) + match_data[2] + '?tag=' + TAG
    end

    private

    def base_str(domain)
      'https://' + domain + '/gp/product/'
    end
  end
end
