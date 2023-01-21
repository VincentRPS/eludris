use anyhow::Context;
use eludris::{check_user_permissions, new_docker_command};

pub fn stop() -> anyhow::Result<()> {
    check_user_permissions()?;

    new_docker_command()
        .arg("down")
        .spawn()
        .context("Could not spawn stop command")?
        .wait()
        .context("Could not stop instance, you're on your own now soldier. Good luck :D")?;

    Ok(())
}
