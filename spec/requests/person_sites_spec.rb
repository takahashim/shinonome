 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/person_sites", type: :request do
  
  # PersonSite. As you add validations to PersonSite, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      PersonSite.create! valid_attributes
      get person_sites_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      person_site = PersonSite.create! valid_attributes
      get person_site_url(person_site)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_person_site_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      person_site = PersonSite.create! valid_attributes
      get edit_person_site_url(person_site)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new PersonSite" do
        expect {
          post person_sites_url, params: { person_site: valid_attributes }
        }.to change(PersonSite, :count).by(1)
      end

      it "redirects to the created person_site" do
        post person_sites_url, params: { person_site: valid_attributes }
        expect(response).to redirect_to(person_site_url(PersonSite.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new PersonSite" do
        expect {
          post person_sites_url, params: { person_site: invalid_attributes }
        }.to change(PersonSite, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post person_sites_url, params: { person_site: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested person_site" do
        person_site = PersonSite.create! valid_attributes
        patch person_site_url(person_site), params: { person_site: new_attributes }
        person_site.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the person_site" do
        person_site = PersonSite.create! valid_attributes
        patch person_site_url(person_site), params: { person_site: new_attributes }
        person_site.reload
        expect(response).to redirect_to(person_site_url(person_site))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        person_site = PersonSite.create! valid_attributes
        patch person_site_url(person_site), params: { person_site: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested person_site" do
      person_site = PersonSite.create! valid_attributes
      expect {
        delete person_site_url(person_site)
      }.to change(PersonSite, :count).by(-1)
    end

    it "redirects to the person_sites list" do
      person_site = PersonSite.create! valid_attributes
      delete person_site_url(person_site)
      expect(response).to redirect_to(person_sites_url)
    end
  end
end
