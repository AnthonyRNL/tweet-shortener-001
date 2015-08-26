# Write your code here.
def word_substituter(tweet)
  tweet.gsub!(/hello/, "hi")
  tweet.gsub!(/\bto\b|too|two/, "2")
  tweet.gsub!(/\bbe\b/, "b")
  tweet.gsub!(/\bat\b/, "@")
  tweet.gsub!(/four|\bfor\b/i, "4")
  tweet.gsub!(/\byou\b/, "u")
  tweet.gsub!(/\band\b/, "&")
  tweet
end

def bulk_tweet_shortener(tweets)
  tweets.each do |x|
    puts word_substituter(x)

  end
end

def selective_tweet_shortener(tweet)
  if tweet.length < 140
    tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length < 140
    tweet
  else
    word_substituter(tweet)[0..139]
  end
end
