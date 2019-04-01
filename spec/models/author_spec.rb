require 'rails_helper'

RSpec.describe Author, type: :model do
  describe 'Register an Author' do
    describe 'DB Table' do
      it { is_expected.to have_db_column :firstname }
      it { is_expected.to have_db_column :lastname }
    end
  end
end