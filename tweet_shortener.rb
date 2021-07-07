def dictionary
  hash = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    'you' => 'u',
    "at" => '@',
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet.split(" ").map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else 
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.each do |tweets|
   puts word_substituter(tweets)
  end
end

def selective_tweet_shortener(tweet)
  print_variable = 140
  if tweet.chars.length > print_variable
     word_substituter(tweet)
  else
  tweet
 end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).chars.length > 140
    shortened_tweet = word_substituter(tweet).chars[0..136].push("...").join("") #Unsure why << was not working. It only accepts one argument while .push can accept many. 
  else
    word_substituter(tweet)
  end
end
    



