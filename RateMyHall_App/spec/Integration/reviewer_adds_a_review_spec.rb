require 'rails_helper.rb'

feature "Reviewer adds a review" do
    scenario "Reviewer navigates to the Belk Hall Page from the Belk Hall from the List of Dorm Halls page" do
        visit dorm_halls_index_path
        expect(page).to have_content("List of Residence Halls")
        click_link "Belk Hall"
        expect(page).to have_content("Belk Hall")
        click_link "Add new review"
        expect(page).to have_content("Belk Hall Page")
    end
    
     scenario "Reviewer successfully leaves review" do
        visit new_belk_article_path
        expect(page).to have_content("Belk Hall Page")
        click_button "Save Belk article"
        expect(page).to have_content("Your Belk Hall Review")
    end
    
    scenario "Reviewer navigates successfully to the About us" do
        visit about_index_path
        expect(page).to have_content("Founded in April 2019, by:")
    end
    
    scenario "Reviewer navigates successfully to Contact Us and fills out form" do
        visit contact_index_path
        fill_in "firstname", with: "First Name"
        fill_in "lastname", with: "Last Name"
        fill_in "subject", with: "Subject"
    end
    
end