if Rails.env.development?
  %w[kitchen].each do |c|
    require_dependency File.join("app","models","#{c}.rb")
  end
end
