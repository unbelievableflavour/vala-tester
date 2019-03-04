project('com.github.bartzaalberg.vala-tester', 'vala', 'c')

gnome = import('gnome')
i18n = import('i18n')

add_global_arguments('-DGETTEXT_PACKAGE="@0@"'.format (meson.project_name()), language:'c')

asresources = gnome.compile_resources(
    'as-resources', 'data/app.gresource.xml',
    source_dir: 'data',
    c_name: 'as'
)

executable(
    meson.project_name(),
    'src/Application.vala',
    'src/MainWindow.vala',
    'src/Constants.vala',
    'src/SourceViewManager.vala',
    'src/StackManager.vala',
    'src/ValaVersionManager.vala',
    'src/FileManager.vala',
    'src/Dialogs/Alert.vala',
    'src/Dialogs/Cheatsheet.vala',
    'src/Dialogs/Preferences.vala',
    'src/Components/HeaderBar.vala',
    'src/Components/HeaderLabel.vala',
    'src/Views/StandardView.vala',
    'src/Views/NoValaFoundView.vala',
    asresources,
    dependencies: [
        dependency('gtk+-3.0'),
        dependency('gtksourceview-3.0'),
        dependency('granite')
    ],
    install: true
)

subdir('data')
subdir('po')

python3 = import('python3').find_python()
run_command(python3, '-c', 'import shutil; shutil.copy("hooks/pre-commit.hook", ".git/hooks/pre-commit")')
