class Server
  include Mongoid::Document
  include Mongoid::Timestamps

  field :discord_id
  field :name
  field :large, :type => :boolean
  field :owner_id
  field :owner_username
end

# <Server name=bottest id=762528125556359168 large=false region= owner=#<Discordrb::User:0x00007fae6d72e728> afk_channel_id= system_channel_id=762528125556359171 afk_timeout=300>
# <User username=illthas id=124711192894767104 discriminator=0685>
