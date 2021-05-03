require 'contentful'

class ContentfulController < ApplicationController
  attr_reader :client

  def initialize
    @client = Contentful::Client.new(
      space: ENV['SPACE_ID'],
      access_token: ENV['ACCESS_TOKEN'],
      environment: ENV['CONTENTFUL_ENVIRONMENT']
    )

    super
  end
end
