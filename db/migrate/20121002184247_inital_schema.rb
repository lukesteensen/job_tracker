class InitalSchema < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.string :website_url
      t.text :description
      t.text :sarah_thoughts, default: "None"
      t.integer :coolness_factor
      t.timestamps
    end

    create_table :jobs do |t|
      t.references :company
      t.string :title
      t.string :application_url
      t.text :description
      t.integer :challenge_factor
      t.integer :likelihood_factor
      t.integer :travel_percentage, default: 0
      t.boolean :applied, default: false
      t.boolean :requires_cover_letter
      t.boolean :requires_long_application
      t.timestamps
    end

    create_table :cities do |t|
      t.string :name
      t.integer :coolness_factor
    end

    create_table :technologies do |t|
      t.string :name
      t.integer :coolness_factor
      t.integer :current_expertise
    end

    create_table :jobs_technologies, id: false do |t|
      t.references :job
      t.references :technology
    end

    create_table :cities_jobs, id: false do |t|
      t.references :city
      t.references :job
    end
  end
end
