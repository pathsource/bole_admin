ActiveAdmin.register LifeStyleAssessment do
  actions :all, except: [:new, :update, :edit, :destroy]

  filter :name
  filter :version
  filter :created_at

  index do
    column :id
    column :name
    column :version
    column :created_at
    actions
  end

  show do |assessment|
    attributes_table do
      row :id
      row :name
      row :version    
      assessment.questions.each do |question|
        panel "Question" do
          attributes_table_for question do
            row :title
            row :body
            row :key_word
            row :question_type
            panel "Options" do
              question.options.each do |option|
                attributes_table_for option do
                  row :title
                  row :body
                  row :key_word
                end
              end
            end
          end
        end
      end
    end
  end


end
