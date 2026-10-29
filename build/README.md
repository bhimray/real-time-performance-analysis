# Generated builds and maintenance history

- `latest_controller.json`: pointer to the current external compiled build.
- `logs/`: build and validation console logs.
- `archive/`: historical source backups and superseded maintenance artifacts.
- `desktop/`: preserved early generated build attempt; not the active build.

The active Windows compiler cache is under `%LOCALAPPDATA%/ECUControl/build`
unless local.json explicitly selects another root. Its short paths avoid
Windows compiler path-length failures. Generated trees retain their original
locations because build files can contain absolute paths.

Only this README is tracked; generated contents are ignored by Git.