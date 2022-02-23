module Tenantable
  extend ActiveSupport::Concern

  # this should be a middleware in the future!
  private

  def read_with_tenant(&block)
    practice = Practice.find_by!(slug: request.subdomain)

    ActiveRecord::Base.connected_to(role: :reading, shard: practice.slug.to_sym) do
      block.call
    end
  end

  def write_with_tenant(&block)
    practice = Practice.find_by!(slug: request.subdomain)

    ActiveRecord::Base.connected_to(role: :writing, shard: practice.slug.to_sym) do
      block.call
    end
  end
end
