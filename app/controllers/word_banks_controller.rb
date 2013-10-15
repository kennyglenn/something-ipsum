class WordBanksController < ApplicationController
  layout :false, except: [:index]
  
  # GET /word_banks
  # GET /word_banks.json
  def index
    @word_banks = WordBank.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @word_banks }
    end
    
  end
  
  def random_num_sentences
    @random_num = (4..16).to_a.sample.Wordbank.sentence
  end
  
  def words 
    @words = WordBank.random.limit(params[:num_words])
  end

  def sentences
    @sentences = []
    params[:num_sentences].to_i.times do 
      @sentences << WordBank.sentence
    end
  end
  
  def paragraphs
    @paragraphs = []
    params[:num_paragraphs].to_i.times do
      paragraph = ""
      (3..6).to_a.sample.times do 
        paragraph << WordBank.sentence + ". "
      end
      @paragraphs << paragraph
    end
  end
   
end
