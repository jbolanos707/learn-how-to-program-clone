rails generate migration add_email_to_users email:string  
// generates new column email to users table


rails g change_column_users

go into migration file

and put

change_column :user, :sex, :string, :default => "M"

// sets default for a column
