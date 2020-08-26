class ModifyTopics < ActiveRecord::Migration[6.0]
    def change
        add_index :topics, :alias, unique: true
        Topic.create :alias => "medicine", :title => "Медико-нейро"
        Topic.create :alias => "universe", :title => "Космические"
        Topic.create :alias => "programming", :title => "Прогерские"
        Topic.create :alias => "drawing", :title => "Рисовательные"
        Topic.create :alias => "gaming", :title => "Игрательные"
    end
end