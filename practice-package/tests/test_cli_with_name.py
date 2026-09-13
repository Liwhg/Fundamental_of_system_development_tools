from greet_practice.cli import main


def test_cli_with_name(capsys):
    main(["Alice"])
    result = capsys.readouterr()
    assert result.out == "Hello, Alice\n"
