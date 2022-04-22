# TailwindcssMerger

This gem gives you a simple way to use many files with components in your project where you are using gem `tailwindcss-rails`.

## Usage

Well, just follow this three easy steps:

1. Install gem `bundle add tailwindcss_merger`
2. Create folder `app/assets/tailwindcss_stylesheets`
3. Add files with your styles into this folder, like this:

```
.
├── app
│   └── assets
│   │   └── tailwindcss_stylesheets
│   │   │   └── buttons.css
│   │   │   └── tables.css
│   │   │   └── colors.css
│   │   │   └── typography.css
```
After this steps you can just run `bin/dev` or `rake tailwindcss:watch`

![ezgif com-gif-maker](https://user-images.githubusercontent.com/49816584/155272801-7b644d22-5909-4bcf-a9fa-a08fcc87b77f.gif)

## Installation

Add this line to your application's Gemfile:

```ruby
gem "tailwindcss_merger"
```

Or just do this:

```
bundle add tailwindcss_merger
```

And then execute:

```bash
bundle
```

Or install it yourself as:

```bash
gem install tailwindcss_merger
```

# To Do
- [ ] Fix push to heroku with .gitignore-d file `application.tailwindcss.css`

# Warning

Please pay attention, that this gem overwrites your existing application.tailwind.css file and because of it before starting any tailwindcss rake task move styles to separate files, like: typography.css, buttons.css, tables.css and etc.

## Contributing

For your applying your changes just create pull request with assigning to me.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
