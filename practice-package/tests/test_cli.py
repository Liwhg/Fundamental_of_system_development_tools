from greet_practice.cli import main
def test_cli(capsys):
    main()
    result = capsys.readouterr()
    assert result.out == "Hello from package\n"

