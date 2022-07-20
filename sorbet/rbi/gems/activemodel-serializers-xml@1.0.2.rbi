# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `activemodel-serializers-xml` gem.
# Please instead update this file by running `bin/tapioca gem activemodel-serializers-xml`.

# source://activemodel-serializers-xml-1.0.2/lib/active_model/serializers/xml.rb:8
module ActiveModel
  class << self
    # source://activemodel-7.0.3/lib/active_model.rb:71
    def eager_load!; end

    # source://activemodel-7.0.3/lib/active_model/gem_version.rb:5
    def gem_version; end

    # source://activemodel-7.0.3/lib/active_model/version.rb:7
    def version; end
  end
end

# source://activemodel-serializers-xml-1.0.2/lib/active_model/serializers/xml.rb:9
module ActiveModel::Serializers; end

# source://activemodel-serializers-xml-1.0.2/lib/active_model/serializers/xml.rb:10
module ActiveModel::Serializers::Xml
  include ::ActiveModel::Serialization
  extend ::ActiveSupport::Concern

  mixes_in_class_methods ::ActiveModel::Naming

  # Sets the model +attributes+ from an XML string. Returns +self+.
  #
  #   class Person
  #     include ActiveModel::Serializers::Xml
  #
  #     attr_accessor :name, :age, :awesome
  #
  #     def attributes=(hash)
  #       hash.each do |key, value|
  #         instance_variable_set("@#{key}", value)
  #       end
  #     end
  #
  #     def attributes
  #       instance_values
  #     end
  #   end
  #
  #   xml = { name: 'bob', age: 22, awesome:true }.to_xml
  #   person = Person.new
  #   person.from_xml(xml) # => #<Person:0x007fec5e3b3c40 @age=22, @awesome=true, @name="bob">
  #   person.name          # => "bob"
  #   person.age           # => 22
  #   person.awesome       # => true
  #
  # source://activemodel-serializers-xml-1.0.2/lib/active_model/serializers/xml.rb:232
  def from_xml(xml); end

  # Returns XML representing the model. Configuration can be
  # passed through +options+.
  #
  # Without any +options+, the returned XML string will include all the
  # model's attributes.
  #
  #   user = User.find(1)
  #   user.to_xml
  #
  #   <?xml version="1.0" encoding="UTF-8"?>
  #   <user>
  #     <id type="integer">1</id>
  #     <name>David</name>
  #     <age type="integer">16</age>
  #     <created-at type="dateTime">2011-01-30T22:29:23Z</created-at>
  #   </user>
  #
  # The <tt>:only</tt> and <tt>:except</tt> options can be used to limit the
  # attributes included, and work similar to the +attributes+ method.
  #
  # To include the result of some method calls on the model use <tt>:methods</tt>.
  #
  # To include associations use <tt>:include</tt>.
  #
  # For further documentation, see <tt>ActiveRecord::Serialization#to_xml</tt>
  #
  # source://activemodel-serializers-xml-1.0.2/lib/active_model/serializers/xml.rb:204
  def to_xml(options = T.unsafe(nil), &block); end
end

# source://activemodel-serializers-xml-1.0.2/lib/active_model/serializers/xml.rb:18
class ActiveModel::Serializers::Xml::Serializer
  # @return [Serializer] a new instance of Serializer
  #
  # source://activemodel-serializers-xml-1.0.2/lib/active_model/serializers/xml.rb:57
  def initialize(serializable, options = T.unsafe(nil)); end

  # Returns the value of attribute options.
  #
  # source://activemodel-serializers-xml-1.0.2/lib/active_model/serializers/xml.rb:55
  def options; end

  # source://activemodel-serializers-xml-1.0.2/lib/active_model/serializers/xml.rb:66
  def serializable_collection; end

  # source://activemodel-serializers-xml-1.0.2/lib/active_model/serializers/xml.rb:62
  def serializable_hash; end

  # source://activemodel-serializers-xml-1.0.2/lib/active_model/serializers/xml.rb:78
  def serialize; end

  private

  # TODO: This can likely be cleaned up to simple use ActiveSupport::XmlMini.to_tag as well.
  #
  # source://activemodel-serializers-xml-1.0.2/lib/active_model/serializers/xml.rb:123
  def add_associations(association, records, opts); end

  # source://activemodel-serializers-xml-1.0.2/lib/active_model/serializers/xml.rb:108
  def add_attributes_and_methods; end

  # source://activemodel-serializers-xml-1.0.2/lib/active_model/serializers/xml.rb:105
  def add_extra_behavior; end

  # source://activemodel-serializers-xml-1.0.2/lib/active_model/serializers/xml.rb:116
  def add_includes; end

  # source://activemodel-serializers-xml-1.0.2/lib/active_model/serializers/xml.rb:166
  def add_procs; end
end

# source://activemodel-serializers-xml-1.0.2/lib/active_model/serializers/xml.rb:19
class ActiveModel::Serializers::Xml::Serializer::Attribute
  # @return [Attribute] a new instance of Attribute
  #
  # source://activemodel-serializers-xml-1.0.2/lib/active_model/serializers/xml.rb:22
  def initialize(name, serializable, value); end

  # source://activemodel-serializers-xml-1.0.2/lib/active_model/serializers/xml.rb:33
  def decorations; end

  # Returns the value of attribute name.
  #
  # source://activemodel-serializers-xml-1.0.2/lib/active_model/serializers/xml.rb:20
  def name; end

  # Returns the value of attribute type.
  #
  # source://activemodel-serializers-xml-1.0.2/lib/active_model/serializers/xml.rb:20
  def type; end

  # Returns the value of attribute value.
  #
  # source://activemodel-serializers-xml-1.0.2/lib/active_model/serializers/xml.rb:20
  def value; end

  protected

  # source://activemodel-serializers-xml-1.0.2/lib/active_model/serializers/xml.rb:43
  def compute_type; end
end

# source://activemodel-serializers-xml-1.0.2/lib/active_model/serializers/xml.rb:52
class ActiveModel::Serializers::Xml::Serializer::MethodAttribute < ::ActiveModel::Serializers::Xml::Serializer::Attribute; end
