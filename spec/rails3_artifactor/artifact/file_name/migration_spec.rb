require 'spec_helper'

CLASS = Rails3::Assist::Artifact::Migration

Rails::Migration::Assist.orm = :active_record

class ArtDir
  include CLASS
end

describe Rails3::Assist::Artifact::Migration::FileName do
  # use_orm :active_record

  before do
    Rails3::Assist::Directory.rails_root = File.dirname (__FILE__)
    @test = ArtDir.new
  end

  describe '#migration_file_name' do
    it "should return the file name for migration" do      
      CLASS.migration_file_name(:create_persons).should match /create_persons/
    end
  end
end

