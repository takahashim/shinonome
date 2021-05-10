# frozen_string_literal: true

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

RSpec.describe '/admin/news', type: :request do
  # News. As you add validations to News, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    {
      title: "テスト",
      body: "テストです",
      flag: true,
      published_on: Time.zone.parse("2021-05-04")
    }
  end

  let(:invalid_attributes) do
    {
      title: nil,
      body: "テストです",
      flag: true,
      published_on: Time.zone.parse("2021-05-04")
    }
  end

  let(:user) { create(:user) }

  describe 'GET /admin/news/' do
    before { sign_in(user) }
    it 'renders a successful response' do
      News.create! valid_attributes
      get admin_news_index_url
      expect(response).to be_successful
    end
  end

  describe 'GET /admin/admin/show' do
    before { sign_in(user) }
    it 'renders a successful response' do
      news = News.create! valid_attributes
      get admin_news_url(news)
      expect(response).to be_successful
    end
  end

  describe 'GET /admin/news/new' do
    before { sign_in(user) }

    it 'renders a successful response' do
      get new_admin_news_url
      expect(response).to be_successful
    end
  end

  describe 'GET /admin/news/edit' do
    before { sign_in(user) }

    it 'render a successful response' do
      news = News.create! valid_attributes
      get edit_admin_news_url(news)
      expect(response).to be_successful
    end
  end

  describe 'POST /admin/news/create' do
    before { sign_in user }

    context 'with valid parameters' do
      it 'creates a new News' do
        expect do
          post admin_news_index_url, params: { news: valid_attributes }
        end.to change(News, :count).by(1)
      end

      it 'redirects to the created news' do
        post admin_news_index_url, params: { news: valid_attributes }
        expect(response).to redirect_to(admin_news_url(News.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new News' do
        expect do
          post admin_news_index_url, params: { news: invalid_attributes }
        end.to change(News, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post admin_news_index_url, params: { news: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    before { sign_in user }

    context 'with valid parameters' do
      let(:new_attributes) do
        {
          title: "テスト2",
          body: "テスト2です",
          flag: true,
          published_on: Time.zone.parse("2021-05-04")
        }
      end

      it 'updates the requested news' do
        news = News.create! valid_attributes
        patch admin_news_url(news), params: { news: new_attributes }
        news.reload
        expect(news.title).to eq "テスト2"
      end

      it 'redirects to the news' do
        news = News.create! valid_attributes
        patch admin_news_url(news), params: { news: new_attributes }
        news.reload
        expect(response).to redirect_to(admin_news_url(news))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        news = News.create! valid_attributes
        patch admin_news_url(news), params: { news: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE /destroy' do
    before { sign_in user }

    it 'destroys the requested news' do
      news = News.create! valid_attributes
      expect do
        delete admin_news_url(news)
      end.to change(News, :count).by(-1)
    end

    it 'redirects to the news list' do
      news = News.create! valid_attributes
      delete admin_news_url(news)
      expect(response).to redirect_to(admin_news_index_url)
    end
  end
end
