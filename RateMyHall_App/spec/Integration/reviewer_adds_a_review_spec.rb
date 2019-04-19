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
    
    scenario "Reviewer navigates successfully to the Belk Hall Page" do
        visit new_belk_article_path
        expect(page).to have_content("Belk Hall Page")
        click_button "Save Belk article"
        expect(page).to have_content("Your Belk Hall Review")
    end
end