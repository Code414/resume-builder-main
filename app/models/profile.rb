class Profile < ApplicationRecord
    has_many(:experiences, dependent: :destroy)
    accepts_nested_attributes_for(:experiences , reject_if: :reject_experience_create, allow_destroy: true)

    belongs_to :user

    def reject_experience_create(experience)
        experience[:position].blank? or experience[:company].blank? or experience[:start].blank? or experience[:end].blank?
    end



    has_many(:projects, dependent: :destroy)
    accepts_nested_attributes_for(:projects , reject_if: :reject_project_create, allow_destroy: true)

    belongs_to :user

    def reject_project_create(project)
        projects[:title].blank? or project[:projecturl].blank? or project[:techstack].blank? or project[:description].blank?
    end 



    has_many(:educations, dependent: :destroy)
    accepts_nested_attributes_for(:educations , reject_if: :reject_education_create, allow_destroy: true)

    belongs_to :user

    def reject_education_create(education)
        education[:degree].blank? or education[:school].blank? or education[:start].blank? or education[:end].blank?
    end
end



