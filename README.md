# wow_weather
This weather app uses view model architecture, incorporating mobx as state management where all the actions happened and the ui observe with `Observable` widgets. All the dependencies is managed by `get_it`.


## Getting Started

Before running this app try to run below command on main and core directory to build necessary
generated files

```bash
dart run build_runner build --delete-conflicting-outputs
```