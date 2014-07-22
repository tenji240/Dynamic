class AddCompanyToPosting < ActiveRecord::Migration
  def change
    add_reference :postings, :company, index: true
  end
end
