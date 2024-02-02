# wow_weather
This weather app uses view model architecture, incorporating [mobx](https://github.com/mobxjs/mobx.dart) as state management where all the actions happened. And the UI is observing with [`Observable`](https://pub.dev/packages/flutter_mobx) widgets. All the dependencies is managed by [`get_it`](https://pub.dev/packages/get_it).

## Folder structure
1. Core: core is where to manage the business logic and data management. Core exposes `use case` classes to talk with the core data.
2. Main: is where the ui happened, each feature will be placed under feature folder where the files separated by view and viewmodel. The state will be managed under viewmodel with mobx, in view model where we model our ui and communicate to core via usecase.


## Getting Started

Before running this app try to run below command on main and core directory to build necessary
generated files

```bash
dart run build_runner build --delete-conflicting-outputs
```
