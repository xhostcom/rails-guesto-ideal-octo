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

RSpec.describe '/greetings', type: :request do
  # Greeting. As you add validations to Greeting, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Greeting.create! valid_attributes
      get greetings_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      greeting = Greeting.create! valid_attributes
      get greeting_url(greeting)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_greeting_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'render a successful response' do
      greeting = Greeting.create! valid_attributes
      get edit_greeting_url(greeting)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Greeting' do
        expect do
          post greetings_url, params: { greeting: valid_attributes }
        end.to change(Greeting, :count).by(1)
      end

      it 'redirects to the created greeting' do
        post greetings_url, params: { greeting: valid_attributes }
        expect(response).to redirect_to(greeting_url(Greeting.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Greeting' do
        expect do
          post greetings_url, params: { greeting: invalid_attributes }
        end.to change(Greeting, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post greetings_url, params: { greeting: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested greeting' do
        greeting = Greeting.create! valid_attributes
        patch greeting_url(greeting), params: { greeting: new_attributes }
        greeting.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the greeting' do
        greeting = Greeting.create! valid_attributes
        patch greeting_url(greeting), params: { greeting: new_attributes }
        greeting.reload
        expect(response).to redirect_to(greeting_url(greeting))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        greeting = Greeting.create! valid_attributes
        patch greeting_url(greeting), params: { greeting: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested greeting' do
      greeting = Greeting.create! valid_attributes
      expect do
        delete greeting_url(greeting)
      end.to change(Greeting, :count).by(-1)
    end

    it 'redirects to the greetings list' do
      greeting = Greeting.create! valid_attributes
      delete greeting_url(greeting)
      expect(response).to redirect_to(greetings_url)
    end
  end
end
