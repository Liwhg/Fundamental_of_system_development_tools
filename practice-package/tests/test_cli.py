import sys

from greet_practice.cli import main


def test_cli(capsys):
    main([])
    result = capsys.readouterr()
    assert result.out == "Hello from package\n"


def test_cli_empty_string(capsys):
    main([""])
    result = capsys.readouterr()
    assert result.out == "invalid input\n"


def test_cli_without_arguement(capsys, monkeypatch):
    monkeypatch.setattr(sys, "argv", ["program"])
    main()
    result = capsys.readouterr()
    assert result.out == "Hello from package\n"


def test_cli_multiple_arguments(capsys):
    main(["Alice", "Bob"])
    result = capsys.readouterr()
    assert result.out == "invalid input\n"


def test_cli_string_with_blank(capsys):
    main(["    "])
    result = capsys.readouterr()
    assert result.out == "invalid input\n"


def test_cli_name_with_blanks(capsys):
    main([" Alice "])
    result = capsys.readouterr()
    assert result.out == "Hello, Alice\n"
