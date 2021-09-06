import { Wallet } from '@ethersproject/wallet'
import { expect } from 'chai'
import { Exchange__factory } from '../build/types'
import { setupFixtureLoader } from './shared/setup'

describe('Exchange', () => {
  const loadFixture = setupFixtureLoader()

  async function exchangeFixture([wallet]: Wallet[]) {
    const exchange = await new Exchange__factory(wallet).deploy()
    return { exchange }
  }

  it('works', async () => {
    const { exchange, wallet } = await loadFixture(exchangeFixture)
    expect(await exchange.owner()).to.eq(wallet.address)
  })
})
