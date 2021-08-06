# PaBigo

### Ruby Version

2.5.1

### Rails Version

5.2.1

## Getting Started

### Clonning the app

After installing "Git", run:

```
git clone git@gitlab.com:josedes/pabigo.git
```

### Installing Git Flow

To install git-flow:

```
sudo apt-get update
sudo apt-get install git-flow
```

If you don't have the "develop" branch, track it:

```
git checkout --track origin/develop
```

And initialize git-flow:

```
git flow init
```

Press Enter to all options to choose the default values, except at the end: press "V" and Enter again ("V" stands for "Version").

Once you have git flow configured, you can now start a new feature from the develop branch:

```
git flow feature start H00XX
```

Where XX is your User Story number ("Historia de Usuario" in Spanish).

### Installing the project

Run these commands:

```
bundle install
rails db:create
rails db:migrate
rails db:seed
```

Running rails db:seed is very important since there are some pre-set tables on the database that are needed to run the project correctly.

Finally, run the server:

```
rails server
```

And that's all.

#### Information of interest

Admin's starter credentials:\
E-Mail: admin@pabigo.com\
Password: password

You can change these credentials on the app later.

#### Others

You can run the rails console to test many things by running:

```
rails console
```
# pabigo
# pabigo
