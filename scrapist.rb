#require 'data_mapper'
#require 'dm-core'
#require 'dm-migrations'
#require 'dm-sqlite-adapter'
#require 'dm-timestamps'
#require 'ostruct'

class Hash
  def self.to_ostructs(obj, memo={})
    return obj unless obj.is_a? Hash
    os = memo[obj] = OpenStruct.new
    obj.each { |k,v| os.send("#{k}=", memo[v] || to_ostructs(v, memo)) }
    os
  end
end

$config = Hash.to_ostructs(YAML.load_file(File.join(Dir.pwd, 'config.yml')))

before do
  headers "Content-Type" => "text/html; charset=utf-8"
end

