use cb_common::{config::CommitBoostConfig, types::Chain};
use eyre::Result;

#[tokio::test]
async fn test_load_config() -> Result<()> {
    let config = CommitBoostConfig::from_file("../config.example.toml")?;
    config.validate().await?;
    assert_eq!(config.chain, Chain::Holesky);
    assert!(config.relays[0].headers.is_some());

    Ok(())
}
