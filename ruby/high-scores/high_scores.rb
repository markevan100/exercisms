class HighScores

  attr_reader :scores
  def initialize(scores)
    @scores = scores
  end

  def latest
    scores.last
  end

  def personal_best
    scores.max
  end

  def personal_top
    scores.max(3)
  end

  def report
    "Your latest score was #{latest}." + sub_report
  end

  def sub_report
     personal_best == latest ? " That's your personal best!" : " That's #{personal_best - latest} short of your personal best!"
  end
end
