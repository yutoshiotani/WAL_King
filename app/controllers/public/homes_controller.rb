class Public::HomesController < ApplicationController
  def top
    @jobs = Job.all
    @tags = Tag.all
  end

  def about
  end
end
