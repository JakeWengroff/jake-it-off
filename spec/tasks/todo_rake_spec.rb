require 'spec_helper'
require 'rake'

describe 'todo:delete_items' do
  before { Blocitoff::Application.load_tasks }

  it { expect { Rake::Task['todo:delete_items'].invoke }.not_to raise_exception }
end
