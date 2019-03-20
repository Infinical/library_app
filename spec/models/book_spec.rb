require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'Create New Book' do
    describe 'DB Table' do
      it { is_expected.to have_db_column :title }
      it { is_expected.to have_db_column :isbn }
      it { is_expected.to have_db_column :year }
    end
  end
end
