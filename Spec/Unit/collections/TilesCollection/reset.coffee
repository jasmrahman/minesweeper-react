jest.autoMockOff()

TilesCollection = require process.cwd() + '/Resources/coffee/collections/TilesCollection.coffee'
tests = require '../../_testGames.coffee'

describe 'TilesCollection.reset()', ->
    it 'should empty out all TileModels of `.all`', ->
        for test in tests
            Tiles = new TilesCollection()
            Tiles.newGame test.x, test.y, test.mines
            Tiles.reset()

            expect Tiles.all.length
                .toBe 0